.class public abstract Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;
.super Lcom/vkcoffee/android/upload/UploadTask;
.source "HTTPResumableUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;,
        Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;
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


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000

.field private static final DEFAULT_CHUNK_SIZE:I = 0x100000

.field private static final HTTP_RESPONSE_CODE_OK:I = 0xc8

.field private static final INTERVAL_PATTERN:Ljava/lang/String; = "\\d*-\\d*\\/\\d*(,\\d*-\\d*\\/\\d*)*$"

.field private static final MAX_ATTEMPTS:I = 0x5

.field private static final PREFERENCE_ATTEMPT:Ljava/lang/String; = ".attempt"

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "http.resumable.upload.task."

.field private static final PREFERENCE_PRE_PROCESS_FILE:Ljava/lang/String; = ".preprocess"

.field private static final PREFERENCE_RANGE:Ljava/lang/String; = ".range"

.field private static final PREFERENCE_SESSION:Ljava/lang/String; = ".session"

.field private static final PROGRESS_UPDATE_DELAY:I = 0x96


# instance fields
.field private attempt:I

.field private currentRequest:Lcom/squareup/okhttp/Call;

.field protected final file:Ljava/lang/String;

.field private preProcessFilePath:Ljava/lang/String;

.field private final preferences:Landroid/content/SharedPreferences;

.field private ranges:Ljava/lang/String;

.field protected server:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field protected uploadResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 58
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->file:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    .line 61
    invoke-direct {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->init()V

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/os/Parcel;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->file:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->server:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)Lcom/squareup/okhttp/Call;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;
    .param p1, "x1"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->cleanPreferences()V

    return-void
.end method

.method private cleanPreferences()V
    .locals 3

    .prologue
    .line 201
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".preprocess"

    .line 202
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".session"

    .line 203
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".range"

    .line 204
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".attempt"

    .line 205
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNextRange(Ljava/util/List;J)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    .locals 9
    .param p1, "fileLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
            ">;J)",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "ranges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getRange(JJ)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 241
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 242
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 243
    .local v0, "first":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 244
    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getRange(JJ)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    move-result-object v1

    goto :goto_0

    .line 249
    .end local v0    # "first":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 250
    .restart local v0    # "first":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 251
    .local v8, "second":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    invoke-static {v8}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 252
    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v8}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getRange(JJ)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "taskId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http.resumable.upload.task."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRange(JJ)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    .locals 10
    .param p0, "offset"    # J
    .param p2, "fileLength"    # J

    .prologue
    .line 260
    sub-long v0, p2, p0

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 261
    .local v8, "chunk":J
    add-long v0, p0, v8

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    .line 262
    .local v4, "end":J
    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    move-wide v2, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    return-object v1
.end method

.method private static getUploadedLength(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "ranges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    const-wide/16 v2, 0x0

    .line 216
    .local v2, "upload":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    .line 217
    .local v0, "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$500(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 218
    goto :goto_0

    .line 219
    .end local v0    # "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    :cond_0
    return-wide v2
.end method

.method private static getUploadedRanges(Ljava/lang/String;J)Ljava/util/List;
    .locals 19
    .param p0, "intervals"    # Ljava/lang/String;
    .param p1, "fileLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    if-eqz p0, :cond_0

    const-string/jumbo v3, "\\d*-\\d*\\/\\d*(,\\d*-\\d*\\/\\d*)*$"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 234
    :goto_0
    return-object v3

    .line 226
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v14, "uploadedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    const-string/jumbo v3, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v15, v3

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    aget-object v11, v16, v15

    .line 228
    .local v11, "interval":Ljava/lang/String;
    const-string/jumbo v3, "-"

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "dash":I
    const-string/jumbo v3, "/"

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 230
    .local v12, "slash":I
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, "start":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    if-lez v12, :cond_2

    .end local v12    # "slash":I
    :goto_2
    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "end":Ljava/lang/String;
    new-instance v3, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;-><init>(JJJ)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_1

    .line 231
    .end local v10    # "end":Ljava/lang/String;
    .restart local v12    # "slash":I
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_2

    .line 234
    .end local v2    # "dash":I
    .end local v11    # "interval":Ljava/lang/String;
    .end local v12    # "slash":I
    .end local v13    # "start":Ljava/lang/String;
    :cond_3
    invoke-static {v14}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".session"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->sessionID:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".preprocess"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".range"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->ranges:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".attempt"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    .line 78
    return-void
.end method

.method private saveToPreferences()V
    .locals 3

    .prologue
    .line 192
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".preprocess"

    .line 193
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".session"

    .line 194
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->sessionID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".range"

    .line 195
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->ranges:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    const-string/jumbo v2, ".attempt"

    .line 196
    invoke-static {v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getPreferenceFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    return-void
.end method


# virtual methods
.method public afterUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/upload/UploadTask;->afterUpload()V

    .line 158
    invoke-direct {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->cleanPreferences()V

    .line 159
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 163
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/upload/UploadTask;->cancel()V

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public doUpload()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    if-nez v12, :cond_0

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFile()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->saveToPreferences()V

    .line 96
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->file:Ljava/lang/String;

    .line 97
    .local v10, "uploadFile":Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;-><init>(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;Ljava/lang/String;)V

    .line 98
    .local v9, "uploadEntity":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    invoke-virtual {v9}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->getFileLength()J

    move-result-wide v4

    .line 100
    .local v4, "fileLength":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    const/4 v13, 0x5

    if-ge v12, v13, :cond_2

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->ranges:Ljava/lang/String;

    invoke-static {v12, v4, v5}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getUploadedRanges(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v11

    .line 102
    .local v11, "uploadedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    invoke-static {v11, v4, v5}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getNextRange(Ljava/util/List;J)Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;

    move-result-object v6

    .line 103
    .local v6, "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    invoke-static {v11}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getUploadedLength(Ljava/util/List;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->setUploadedLength(J)V

    .line 104
    invoke-virtual {v9, v6}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;->setRange(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)V

    .line 106
    new-instance v12, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v12}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->server:Ljava/lang/String;

    .line 107
    invoke-virtual {v12, v13}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    .line 108
    invoke-virtual {v12, v9}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    const-string/jumbo v13, "User-Agent"

    sget-object v14, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 109
    invoke-virtual {v12, v13, v14}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    const-string/jumbo v13, "Session-ID"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->sessionID:Ljava/lang/String;

    .line 110
    invoke-virtual {v12, v13, v14}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    const-string/jumbo v13, "Connection"

    const-string/jumbo v14, "Keep-Alive"

    .line 111
    invoke-virtual {v12, v13, v14}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    const-string/jumbo v13, "Content-Disposition"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "attachment; filename=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->file:Ljava/lang/String;

    .line 112
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    const-string/jumbo v13, "Content-Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bytes "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 113
    invoke-static {v6}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$000(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$100(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;->access$200(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v12

    .line 114
    invoke-virtual {v12}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v7

    .line 116
    .local v7, "req":Lcom/squareup/okhttp/Request;
    sget-object v12, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v12, v7}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    .line 117
    .local v2, "call":Lcom/squareup/okhttp/Call;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 119
    :try_start_0
    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v8

    .line 120
    .local v8, "response":Lcom/squareup/okhttp/Response;
    const-string/jumbo v12, "Range"

    invoke-virtual {v8, v12}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->ranges:Ljava/lang/String;

    .line 121
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 122
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    .line 123
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->code()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_5

    .line 124
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->uploadResponse:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->saveToPreferences()V

    .line 143
    .end local v2    # "call":Lcom/squareup/okhttp/Call;
    .end local v6    # "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    .end local v7    # "req":Lcom/squareup/okhttp/Request;
    .end local v8    # "response":Lcom/squareup/okhttp/Response;
    .end local v11    # "uploadedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    const/4 v13, 0x5

    if-lt v12, v13, :cond_6

    .line 144
    new-instance v12, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v13, "can\'t upload: max attempts reached"

    invoke-direct {v12, v13}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 96
    .end local v4    # "fileLength":J
    .end local v9    # "uploadEntity":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    .end local v10    # "uploadFile":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    .restart local v2    # "call":Lcom/squareup/okhttp/Call;
    .restart local v4    # "fileLength":J
    .restart local v6    # "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    .restart local v7    # "req":Lcom/squareup/okhttp/Request;
    .restart local v8    # "response":Lcom/squareup/okhttp/Response;
    .restart local v9    # "uploadEntity":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$UploadEntity;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>.UploadEntity;"
    .restart local v10    # "uploadFile":Ljava/lang/String;
    .restart local v11    # "uploadedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->attempt:I

    .line 129
    const-string/jumbo v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unexpected response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->saveToPreferences()V

    goto/16 :goto_1

    .line 131
    .end local v8    # "response":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v12, "vk"

    invoke-static {v12, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    new-instance v12, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v13, "can\'t upload"

    invoke-direct {v12, v13, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->saveToPreferences()V

    throw v12

    .line 134
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v12, "vk"

    invoke-static {v12, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v12, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v13, "can\'t parse response"

    invoke-direct {v12, v13, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .end local v2    # "call":Lcom/squareup/okhttp/Call;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "range":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;
    .end local v7    # "req":Lcom/squareup/okhttp/Request;
    .end local v11    # "uploadedRanges":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$Range;>;"
    :cond_6
    return-void
.end method

.method protected preProcessFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 185
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask<TS;>;"
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/UploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
