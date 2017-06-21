.class public abstract Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;
.super Lru/mail/android/mytracker/async/commands/AbstractAsyncContextCommand;
.source "AbstractHttpCommand.java"


# instance fields
.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected trackerParams:Lru/mail/android/mytracker/TrackerParams;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p3}, Lru/mail/android/mytracker/async/commands/AbstractAsyncContextCommand;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->params:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    .line 50
    return-void
.end method


# virtual methods
.method protected collectData()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v2}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 62
    .local v1, "trackingLocationEnabled":Z
    :goto_0
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v2

    invoke-virtual {v2}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getLocationDataProvider()Lru/mail/android/mytracker/providers/LocationDataProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->setEnabled(Z)V

    .line 64
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v2

    iget-object v3, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->collectData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "trackingLocationEnabled":Z
    :goto_1
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error collecting data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getFinalUrlForGet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 157
    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 159
    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v1}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->getQueryString(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getFinalUrlForPost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected getQueryString(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .param p2, "encodeValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 173
    .local v4, "notFirst":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 176
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 178
    if-eqz p2, :cond_1

    .line 182
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 188
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 196
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected isConnected()Z
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getNetworkInfoDataProvider()Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->collectData(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getNetworkInfoDataProvider()Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected sendGetRequest()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 126
    const/4 v1, 0x0

    .line 129
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->getFinalUrlForGet()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "finalUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send GET request: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 132
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 133
    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 134
    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    const-string/jumbo v6, "connection"

    const-string/jumbo v8, "close"

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 139
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 140
    .local v4, "responseCode":I
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_0

    const/16 v6, 0xcc

    if-ne v4, v6, :cond_1

    .line 141
    .local v5, "success":Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v3    # "finalUrl":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "success":Z
    :goto_1
    return v5

    .restart local v3    # "finalUrl":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    :cond_1
    move v5, v7

    .line 140
    goto :goto_0

    .line 144
    .end local v3    # "finalUrl":Ljava/lang/String;
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 147
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v5, v7

    .line 148
    goto :goto_1
.end method

.method protected sendPostRequest(Ljava/lang/String;)Z
    .locals 11
    .param p1, "bodyString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 86
    const/4 v2, 0x0

    .line 89
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->getFinalUrlForPost()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "finalUrl":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send POST request: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 92
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 93
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    const/16 v8, 0x2710

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 96
    const-string/jumbo v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v8, "connection"

    const-string/jumbo v10, "close"

    invoke-virtual {v2, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v10, "application/json"

    invoke-virtual {v2, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v8, "Content-Encoding"

    const-string/jumbo v10, "gzip"

    invoke-virtual {v2, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 102
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 104
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v1, "bufferedStream":Ljava/io/BufferedOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v5, "gzipOS":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 107
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 108
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 110
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 111
    .local v6, "responseCode":I
    const/16 v8, 0xc8

    if-eq v6, v8, :cond_0

    const/16 v8, 0xcc

    if-ne v6, v8, :cond_2

    .line 113
    .local v7, "success":Z
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    if-nez v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send request failed. response code: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v4    # "finalUrl":Ljava/lang/String;
    .end local v5    # "gzipOS":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "responseCode":I
    .end local v7    # "success":Z
    :cond_1
    :goto_1
    return v7

    .restart local v1    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "finalUrl":Ljava/lang/String;
    .restart local v5    # "gzipOS":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "responseCode":I
    :cond_2
    move v7, v9

    .line 111
    goto :goto_0

    .line 116
    .end local v1    # "bufferedStream":Ljava/io/BufferedOutputStream;
    .end local v4    # "finalUrl":Ljava/lang/String;
    .end local v5    # "gzipOS":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 119
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v7, v9

    .line 120
    goto :goto_1
.end method
