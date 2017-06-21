.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;

.field private final arg$2:[I

.field private final arg$3:[I


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$1:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$2:[I

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$3:[I

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;[I[I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;-><init>(Landroid/app/ProgressDialog;[I[I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$1:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$2:[I

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->arg$3:[I

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/DebugPrefsActivity$3;->lambda$success$290(Landroid/app/ProgressDialog;[I[I)V

    return-void
.end method
