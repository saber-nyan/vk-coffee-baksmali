.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:[Z

.field private final arg$4:Landroid/app/ProgressDialog;

.field private final arg$5:[Lcom/vkcoffee/android/AudioFile;

.field private final arg$6:[I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$3:[Z

    iput-object p4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$4:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$5:[Lcom/vkcoffee/android/AudioFile;

    iput-object p6, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$6:[I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)Ljava/lang/Runnable;
    .locals 7

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$3:[Z

    iget-object v3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$4:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$5:[Lcom/vkcoffee/android/AudioFile;

    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->arg$6:[I

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$doDownloadAudio$297(Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)V

    return-void
.end method
