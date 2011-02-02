= adcenter_client

* scm:: (https://github.com/bleechack/adcenter-client)
* rubyforge:: (http://rubyforge.org/projects/adcenter-client/)

== DESCRIPTION:

Interface to Microsoft (Yahoo!) adCenter SOAP API

== FEATURES/PROBLEMS:

* adds a wrapper around MSN adCenter SOAP API for ruby use
* entities are created directly from the WSDL using wsdl2ruby.rb

== SYNOPSIS:

  credentials = {
    'UserName' => options[:username],
    'Password' => options[:password],
    'ApplicationToken' => '',
    'DeveloperToken' => options[:token],
    'CustomerId' => options[:customerid],
    'CustomerAccountId' => options[:accountid] || ""
  }

  @acc = AdCenterClient.new(credentials)
  @svc = @acc.customer_management_service
  @entities = @acc.entities

  req = @entities::GetAccountsInfoRequest.new(credentials[:customerid])
  res = @svc.getAccountsInfo(req)

== REQUIREMENTS:

  * soap4r

== INSTALL:

  $ sudo gem install adcenter-client

== DEVELOPERS:

After checking out the source, run:

  $ rake adcenter-client

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== AUTHOR:

{Josh Peck}[jmp@joshpeck.org]

== LICENSE:

(The BSD License)

Copyright (c) 2011, JOSH PECK
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the project nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
