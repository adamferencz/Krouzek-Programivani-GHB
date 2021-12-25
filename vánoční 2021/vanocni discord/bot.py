import discord
import os 
import json
import random 
import socket

HOST = 'localhost'  # Symbolic name meaning all available interfaces
PORT = 12000  # Arbitrary non-privileged port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

my_secret_token = 'OTAwNzU0NzI0MzYwNDQxOTI2.YXF7NQ.PLtV6BtJeTVlTuCPPaBNXxXK2Sk'
client = discord.Client() 

@client.event
async def on_ready():
  print('Logged as {0.user}'.format(client)) 

@client.event
async def on_message(message):
  if message.author == client.user:
    return

  # if message.content.startswith('.'):
  # content = message.content[1:]
  content = message.content
  new_content = ""
  for l in content:
    new_content += l+","

  print(new_content)
  msg = str(message.author) + "/" +  new_content

  data = (msg).encode()
  s.send(data)
  # await message.channel.send(new_content)



client.run(my_secret_token)

