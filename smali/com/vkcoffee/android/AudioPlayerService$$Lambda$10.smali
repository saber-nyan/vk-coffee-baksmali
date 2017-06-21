.class final synthetic Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AudioPlayerService;

.field private final arg$2:F


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;->arg$2:F

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;F)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;-><init>(Lcom/vkcoffee/android/AudioPlayerService;F)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;->arg$2:F

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->lambda$fadeOut$235(F)V

    return-void
.end method
