.class final synthetic Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;

.field private final arg$2:[I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;->arg$2:[I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;[I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;[I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;->arg$2:[I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;->lambda$doLoadData$614([I)V

    return-void
.end method
