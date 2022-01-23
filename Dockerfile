FROM maven:3-openjdk-11
COPY ./ ./
RUN mvn clean package
ARG RENDER_EXTERNAL_URL
ENV LINECORP_PLATFORM_CHANNEL_CALLBACKURL="${RENDER_EXTERNAL_URL}/auth"
CMD java -jar ./target/line-login-starter.jar
