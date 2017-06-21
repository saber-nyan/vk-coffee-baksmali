.class final synthetic Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

.field private final arg$2:Landroid/app/ProgressDialog;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$2:Landroid/app/ProgressDialog;

    iput p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;I)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;I)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$2:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->arg$3:I

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/LinkRedirActivity;->lambda$openChat$650(Landroid/app/ProgressDialog;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
