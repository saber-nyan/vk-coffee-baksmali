.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;

.field private final arg$2:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;Lcom/vkcoffee/android/DialogEntry;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1$$Lambda$2;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$1;->lambda$onReceive$450(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
