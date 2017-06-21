.class public Lcom/vkcoffee/android/upload/UploaderIntentService;
.super Landroid/app/IntentService;
.source "UploaderIntentService.java"


# static fields
.field private static canceledIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static failedTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkcoffee/android/upload/UploadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static queueIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static runningTask:Lcom/vkcoffee/android/upload/UploadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->failedTasks:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->canceledIDs:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->queueIDs:Ljava/util/HashSet;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "uploader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static cancel(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 79
    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/UploadTask;->cancel()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->canceledIDs:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static hasTaskWithID(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->queueIDs:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->failedTasks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaskFailed(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/vkcoffee/android/upload/UploaderIntentService;->failedTasks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private runTask(Lcom/vkcoffee/android/upload/UploadTask;)V
    .locals 3
    .param p1, "task"    # Lcom/vkcoffee/android/upload/UploadTask;

    .prologue
    .line 54
    sget-object v1, Lcom/vkcoffee/android/upload/UploaderIntentService;->canceledIDs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    sput-object p1, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/upload/UploadTask;->run()V
    :try_end_0
    .catch Lcom/vkcoffee/android/upload/UploadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lcom/vkcoffee/android/upload/UploaderIntentService;->runningTask:Lcom/vkcoffee/android/upload/UploadTask;

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "x":Lcom/vkcoffee/android/upload/UploadException;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    sget-object v1, Lcom/vkcoffee/android/upload/UploaderIntentService;->failedTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    .end local v0    # "x":Lcom/vkcoffee/android/upload/UploadException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "x":Ljava/lang/Throwable;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string/jumbo v3, "task"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    const-string/jumbo v3, "task"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/upload/UploadTask;

    .line 42
    .local v2, "task":Lcom/vkcoffee/android/upload/UploadTask;
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/upload/UploaderIntentService;->runTask(Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 43
    sget-object v3, Lcom/vkcoffee/android/upload/UploaderIntentService;->queueIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 51
    .end local v2    # "task":Lcom/vkcoffee/android/upload/UploadTask;
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string/jumbo v3, "retry"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string/jumbo v3, "retry"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "id":I
    sget-object v3, Lcom/vkcoffee/android/upload/UploaderIntentService;->failedTasks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/upload/UploadTask;

    .line 47
    .local v1, "t":Lcom/vkcoffee/android/upload/UploadTask;
    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/upload/UploaderIntentService;->runTask(Lcom/vkcoffee/android/upload/UploadTask;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 31
    const-string/jumbo v1, "task"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string/jumbo v1, "task"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/UploadTask;

    .line 33
    .local v0, "task":Lcom/vkcoffee/android/upload/UploadTask;
    sget-object v1, Lcom/vkcoffee/android/upload/UploaderIntentService;->queueIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/UploadTask;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v0    # "task":Lcom/vkcoffee/android/upload/UploadTask;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
