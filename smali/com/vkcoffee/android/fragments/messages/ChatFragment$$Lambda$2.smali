.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$lambda$0(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-void
.end method
