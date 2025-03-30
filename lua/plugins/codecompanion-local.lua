-- This is a template file for machine-specific codecompanion settings
-- Copy this file to lua/plugins/codecompanion-local.lua and customize it
-- The file is gitignored so your personal settings won't be tracked

return {
  adapters = {
    -- Example configuration for OpenAI
    openai = {
      api_key = os.getenv 'OPENAI_API_KEY',
      model = 'gpt-4o',
      parameters = {
        temperature = 0.1,
        top_p = 0.95,
      },
    },
    -- Example configuration for Anthropic
    anthropic = {
      api_key = os.getenv 'ANTHROPIC_API_KEY',
      model = 'claude-3-opus-20240229',
    },
    -- Example configuration for OpenRouter
    openrouter = {
      api_key = os.getenv 'OPENROUTER_API_KEY',
      model = 'anthropic/claude-3-opus-20240229',
      custom_endpoint_parameters = {
        route = 'fastest',
      },
    },
  },
  -- Set your preferred default adapter
  default_adapter = 'openai',
  
  -- Other codecompanion settings you might want to customize
  chat = {
    keymaps = {
      close = 'q',
      yank_code = 'y',
      yank_to_register = 'Y',
      execute_code = 'e',
      show_system_prompt = 'S',
    },
  },
  
  log_level = 'ERROR',
}
