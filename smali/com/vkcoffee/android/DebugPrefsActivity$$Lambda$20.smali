.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$null$287()V

    return-void
.end method
