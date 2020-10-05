<#include "../ibatisbase.ftl">
<?xml version="1.0" encoding="UTF-8" ?>
<!--
       Copyright 2015-2019 the original author or authors.
       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at
          http://www.apache.org/licenses/LICENSE-2.0
       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.
-->
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
    
<mapper namespace="${name}">
<#assign capturedOutput>
	<#list orm.methodSpecification as method>
		<#include "method/${method}.ftl">				
	</#list>
</#assign>	

${capturedOutput}
</mapper>