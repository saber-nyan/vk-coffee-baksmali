.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;

.field private final arg$2:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;Ljava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15$$Lambda$1;->arg$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;->lambda$onMessagesLoaded$428(Ljava/util/ArrayList;)V

    return-void
.end method
