.class final synthetic Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;

.field private final arg$2:Lcom/vkcoffee/android/api/VideoFile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/api/VideoFile;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;Lcom/vkcoffee/android/api/VideoFile;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1$$Lambda$1;->arg$2:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/videos/AddedVideosFragment$1;->lambda$onReceive$305(Lcom/vkcoffee/android/api/VideoFile;Ljava/util/ArrayList;)V

    return-void
.end method
