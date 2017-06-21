.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;->instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;->instance:Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$20;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vkcoffee/android/Message;

    check-cast p2, Lcom/vkcoffee/android/Message;

    invoke-static {p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$forward$433(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/Message;)I

    move-result v0

    return v0
.end method
