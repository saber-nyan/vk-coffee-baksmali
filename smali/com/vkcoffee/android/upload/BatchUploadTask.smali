.class public Lcom/vkcoffee/android/upload/BatchUploadTask;
.super Lcom/vkcoffee/android/upload/UploadTask;
.source "BatchUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/upload/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/UploadTask",
        "<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/vkcoffee/android/upload/ProgressListener;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/upload/BatchUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentTask:I

.field private progressTitle:Ljava/lang/String;

.field private subTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/UploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/vkcoffee/android/upload/BatchUploadTask$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/BatchUploadTask$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/BatchUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "progressTitle"    # Ljava/lang/String;
    .param p4, "doneTitle"    # Ljava/lang/String;
    .param p5, "doneText"    # Ljava/lang/String;
    .param p6, "doneIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/upload/UploadTask;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/upload/UploadTask;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iput-object p3, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->progressTitle:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneTitle:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneText:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneIntent:Landroid/app/PendingIntent;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/upload/UploadTask;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    .line 94
    const-class v0, Lcom/vkcoffee/android/upload/UploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->progressTitle:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneTitle:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneText:Ljava/lang/String;

    .line 98
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneIntent:Landroid/app/PendingIntent;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/BatchUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/BatchUploadTask$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/BatchUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public doUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->progressTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onProgress(Lcom/vkcoffee/android/upload/UploadTask;IIZ)V
    .locals 4
    .param p1, "task"    # Lcom/vkcoffee/android/upload/UploadTask;
    .param p2, "done"    # I
    .param p3, "total"    # I
    .param p4, "indeterminate"    # Z

    .prologue
    .line 113
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 114
    .local v0, "percent":I
    iget v1, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 115
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v1, v2, p4}, Lcom/vkcoffee/android/upload/BatchUploadTask;->onProgress(IIZ)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/vkcoffee/android/upload/BatchUploadTask;->onProgress(IIZ)V

    goto :goto_0
.end method

.method run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x143

    .line 35
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    iget-object v3, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 36
    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    iget v3, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/upload/UploadTask;

    .line 37
    .local v0, "task":Lcom/vkcoffee/android/upload/UploadTask;
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/upload/UploadTask;->setProgressListener(Lcom/vkcoffee/android/upload/ProgressListener;)V

    .line 38
    invoke-virtual {v0}, Lcom/vkcoffee/android/upload/UploadTask;->run()V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/upload/UploadTask;->setProgressListener(Lcom/vkcoffee/android/upload/ProgressListener;)V

    .line 35
    iget v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->currentTask:I
    :try_end_0
    .catch Lcom/vkcoffee/android/upload/UploadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "task":Lcom/vkcoffee/android/upload/UploadTask;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "x":Lcom/vkcoffee/android/upload/UploadException;
    :try_start_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/BatchUploadTask;->needShowNotifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/BatchUploadTask;->showFailedNotification()V

    .line 45
    :cond_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local v1    # "x":Lcom/vkcoffee/android/upload/UploadException;
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->context:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    throw v3

    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->context:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 49
    iget-object v2, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneText:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v3, v4}, Lcom/vkcoffee/android/upload/BatchUploadTask;->showDoneNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 50
    return-void
.end method

.method public save()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->subTasks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->progressTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/upload/BatchUploadTask;->doneIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    return-void
.end method
