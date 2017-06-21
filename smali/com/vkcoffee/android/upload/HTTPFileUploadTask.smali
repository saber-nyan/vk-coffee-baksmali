.class public abstract Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
.super Lcom/vkcoffee/android/upload/UploadTask;
.source "HTTPFileUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/vkcoffee/android/upload/UploadTask",
        "<TS;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field private currentRequest:Lcom/squareup/okhttp/Call;

.field protected file:Ljava/lang/String;

.field protected server:Ljava/lang/String;

.field protected uploadResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->file:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 225
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->file:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->server:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->id:I

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;)Lcom/squareup/okhttp/Call;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
    .param p1, "x1"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/upload/UploadTask;->cancel()V

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public doUpload()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->preProcessFile()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "newFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    :try_start_0
    new-instance v5, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v6, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->server:Ljava/lang/String;

    .line 56
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;

    if-eqz v1, :cond_2

    .line 57
    .end local v1    # "newFile":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->getPostFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v1, v7}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$UploadEntity;-><init>(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    const-string/jumbo v6, "User-Agent"

    sget-object v7, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 58
    invoke-virtual {v5, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 61
    .local v2, "req":Lcom/squareup/okhttp/Request;
    sget-object v5, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v5, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    .line 62
    .local v0, "call":Lcom/squareup/okhttp/Call;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 63
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "s":Ljava/lang/String;
    sget-boolean v5, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_0

    .line 65
    const-string/jumbo v5, "vk"

    invoke-static {v5, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->uploadResponse:Lorg/json/JSONObject;

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 77
    .end local v0    # "call":Lcom/squareup/okhttp/Call;
    .end local v2    # "req":Lcom/squareup/okhttp/Request;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-void

    .line 56
    .restart local v1    # "newFile":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->file:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 69
    .end local v1    # "newFile":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 70
    .local v4, "x":Ljava/io/IOException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    new-instance v5, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v6, "can\'t upload"

    invoke-direct {v5, v6, v4}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 72
    .end local v4    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 73
    .local v4, "x":Lorg/json/JSONException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v5, Lcom/vkcoffee/android/upload/BadUploadServerException;

    const-string/jumbo v6, "can\'t parse response"

    invoke-direct {v5, v6, v4}, Lcom/vkcoffee/android/upload/BadUploadServerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected abstract getPostFieldName()Ljava/lang/String;
.end method

.method protected preProcessFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 218
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask<TS;>;"
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/UploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return-void
.end method
