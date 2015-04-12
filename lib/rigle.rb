require 'rigle/version'
require 'rigle/routing'

module Rigle
  class Application
    def call(env)
      case env['PATH_INFO']
      when '/favicon.ico'
        return render_html(status: 404, content: [])
      when '/'
        return redirect_to(path: '/quotes/quote')
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      begin
        text = controller.send(act)
        render_html(status: 200, content: [text])
      rescue
        render_html(status: 500, content: [
          '<p>Huston, we have a problem!</p>',
          %q(<p>Told you, there's no place like <a href="http://localhost:3001/">home</a>...</p>)
        ])
      end
    end

    private

    def render_html(status:, content:)
      [status, {'Content-Type' => 'text/html'}, content]
    end

    def redirect_to(path:)
      headers = {
        'Content-Type' => 'text/html',
        'Location' => path
      }
      [302, headers, ['302 you are being redirected']]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
