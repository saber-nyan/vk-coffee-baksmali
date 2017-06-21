.class final synthetic Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$3:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->arg$3:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->lambda$null$647(Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V

    return-void
.end method
