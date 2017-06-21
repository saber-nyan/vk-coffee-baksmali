.class Lcom/vkcoffee/android/LoadData$Check;
.super Landroid/os/AsyncTask;
.source "LoadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/LoadData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Check"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LoadData;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LoadData;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/vkcoffee/android/LoadData$Check;->this$0:Lcom/vkcoffee/android/LoadData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/LoadData;Lcom/vkcoffee/android/LoadData$Check;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/LoadData$Check;-><init>(Lcom/vkcoffee/android/LoadData;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LoadData$Check;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 233
    const-string v6, ""

    .line 235
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    sget-object v8, Lcom/vkcoffee/android/GlobalVarsCoffee;->HOST:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 236
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "address":Ljava/lang/String;
    const-string v8, "379VyO4i7FwwnC0oMdESTw=="

    invoke-static {v8}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "J7KCe8DtSsQ51OAfUjTkgN3to3VpBVRFUjKDigGaKWQ="

    invoke-static {v8}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 238
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v9, "Inf"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "try"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 239
    iget-object v8, p0, Lcom/vkcoffee/android/LoadData$Check;->this$0:Lcom/vkcoffee/android/LoadData;

    const/4 v9, 0x0

    invoke-static {v8, v1, v9}, Lcom/vkcoffee/android/LoadData;->access$0(Lcom/vkcoffee/android/LoadData;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    const-string v8, ""

    .line 255
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "address":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 244
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "address":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/net/URL;

    sget-object v8, Lcom/vkcoffee/android/GlobalVarsCoffee;->COFFEE_REPOSITORY:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 246
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 248
    .local v2, "bufficReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 251
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bufficReader":Ljava/io/BufferedReader;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :goto_2
    move-object v8, v6

    .line 255
    goto :goto_0

    .line 249
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "bufficReader":Ljava/io/BufferedReader;
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 252
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bufficReader":Ljava/io/BufferedReader;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LoadData$Check;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/LoadData$Check;->this$0:Lcom/vkcoffee/android/LoadData;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/LoadData;->access$1(Lcom/vkcoffee/android/LoadData;Ljava/lang/String;)V

    .line 261
    return-void
.end method
