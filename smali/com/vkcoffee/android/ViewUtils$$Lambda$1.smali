.class final synthetic Lcom/vkcoffee/android/ViewUtils$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ViewUtils$$Lambda$1;->arg$1:Landroid/app/Dialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Dialog;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ViewUtils$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ViewUtils$$Lambda$1;-><init>(Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$$Lambda$1;->arg$1:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->lambda$dismissDialogSafety$722(Landroid/app/Dialog;)V

    return-void
.end method
