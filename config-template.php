<?php

    class Config
    {
        const REDMINE_URL       = 'LINK_TO_REDMINE';
        const API_KEY           = 'API_KEY';
        const IGNORE_GROUP      = 1337;
        const TIME_WINDOW       = '2 days';
        const MAIL_SUBJECT      = 'Redmine tickets';
        const MAIL_FROM         = 'redmine_digest@COMPANY_NAME';
        const MAIL_FROM_NAME    = 'Redmine Digest';
        const MAIL_TO           = 'TO_ADDRESS';                     // separate multiple addresses by comma
        const MAIL_SMTP         = true;
        const MAIL_HOST         = 'SMTP_HOST';
        const MAIL_SMTP_PORT    = 587;
        const MAIL_USERNAME     = 'MAIL_USERNAME';
        const MAIL_PASSWORD     = 'MAIL_PASSWORD';
        const MAIL_SMTPSECURE   = 'tls';

        public static function get($key)
        {
            if (!defined('self::'.$key)) {
                return;
            }

            return constant('self::'.$key);
        }
    }
