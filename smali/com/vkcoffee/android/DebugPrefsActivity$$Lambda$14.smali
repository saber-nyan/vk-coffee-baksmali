.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;->arg$2:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;->arg$1:Lcom/vkcoffee/android/DebugPrefsActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$downloadMessages$291(Landroid/app/ProgressDialog;)V

    return-void
.end method
