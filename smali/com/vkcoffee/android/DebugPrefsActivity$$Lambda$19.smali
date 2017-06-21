.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

.field private final arg$2:Landroid/app/ProgressDialog;

.field private final arg$3:[I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$2:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$3:[I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;[I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;[I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$2:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->arg$3:[I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$null$296(Landroid/app/ProgressDialog;[I)V

    return-void
.end method
