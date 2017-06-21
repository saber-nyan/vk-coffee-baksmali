.class final synthetic Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;->arg$2:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/LinkRedirActivity;->lambda$openChat$648(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V

    return-void
.end method
