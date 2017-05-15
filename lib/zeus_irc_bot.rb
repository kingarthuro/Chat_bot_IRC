#!/usr/bin/env ruby

require_relative "zeus_irc_bot/version"

module ZeusIrcBot

  require "cinch"

  bot = Cinch::Bot.new do
    configure do |c|
      c.nick = "Zeus" # Le nom du bot
      c.user = "Arthur" # Le nom de l'utilisateur
      c.realname = "ZeusBot" # Le nom réel du bot
      c.server = "127.0.0.1" # Le serveur IRC
      c.channels = ["#chan"] # Le chan IRC
    end
    on :message, "coucou" do |m|
      m.reply "#{m.user.nick} te répond coucou batard !"
    end
    on :message, "paul" do |m|
      m.reply "si c'est un vrai il doit te filer un bonus"
    end
    on :message, "hello" do |m|
      m.reply "hello"
    end
    on :message, "bonjour" do |m|
      m.reply "pascal bukkake ?"
    end
    on :message, "arthur" do |m|
      m.reply "tu dis pas bonjour batard ?"
    end
    on :message, "amand" do |m|
      m.reply "oh non pas ce bolosse ..."
    end
    on :message, "clément" do |m|
      m.reply "oh non pas ce bolosse ..."
    end

  end

  bot.start

end
