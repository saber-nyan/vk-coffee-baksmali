.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->lambda$onClick$443(Ljava/lang/Integer;)V

    return-void
.end method
