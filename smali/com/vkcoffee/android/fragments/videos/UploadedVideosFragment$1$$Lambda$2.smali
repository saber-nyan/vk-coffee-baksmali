.class final synthetic Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Lcom/vkcoffee/android/api/VideoFile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$3:Lcom/vkcoffee/android/api/VideoFile;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->arg$3:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->lambda$null$306(Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method
