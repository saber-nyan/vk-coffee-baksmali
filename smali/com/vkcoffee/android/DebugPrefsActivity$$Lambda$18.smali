.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/ProgressDialog;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Landroid/app/ProgressDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;->arg$1:Landroid/app/ProgressDialog;

    iput p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/ProgressDialog;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;-><init>(Landroid/app/ProgressDialog;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;->arg$1:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;->arg$2:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$null$295(Landroid/app/ProgressDialog;I)V

    return-void
.end method
