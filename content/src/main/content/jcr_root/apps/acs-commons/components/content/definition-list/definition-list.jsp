<%--
  #%L
  ACS AEM Commons Package
  %%
  Copyright (C) 2014 Adobe
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
  --%>
<%@include file="/libs/foundation/global.jsp" %>
<%@ taglib prefix="wcmmode" uri="http://www.adobe.com/consulting/acs-aem-commons/wcmmode" %><%
%><%@ taglib prefix="widgets" uri="http://www.adobe.com/consulting/acs-aem-commons/widgets" %><%
%><%@ taglib prefix="xss" uri="http://www.adobe.com/consulting/acs-aem-commons/xss" %>
<c:set var="definitions" value="${widgets:getMultiFieldPanelValues(resource, 'definitions')}"/>
<c:choose>
    <c:when test="${empty definitions}">
        <wcmmode:edit><img class="cq-dl-placeholder cq-block-placeholder" src="/etc/designs/default/0.gif"/></wcmmode:edit>
    </c:when>
    <c:otherwise>
        <dl>
            <c:forEach items="${definitions}" var="definition">
                <dt>${xss:encodeForHTML(xssAPI, definition['term'])}</dt>
                <dd>${xss:encodeForHTML(xssAPI, definition['definition'])}</dt>
            </c:forEach>
        </dl>
    </c:otherwise>
</c:choose>
