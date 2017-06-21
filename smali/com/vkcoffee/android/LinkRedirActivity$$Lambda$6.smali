.class final synthetic Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

.field private final arg$2:Landroid/app/ProgressDialog;

.field private final arg$3:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$2:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$3:Ljava/util/ArrayList;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;Ljava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$2:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->arg$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->lambda$null$643(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V

    return-void
.end method
