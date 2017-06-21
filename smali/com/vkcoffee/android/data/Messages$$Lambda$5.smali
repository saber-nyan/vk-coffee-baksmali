.class final synthetic Lcom/vkcoffee/android/data/Messages$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:I

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;


# direct methods
.method private constructor <init>(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$1:I

    iput p2, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$2:I

    iput p3, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$3:I

    iput p4, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$4:I

    iput-object p5, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    return-void
.end method

.method public static lambdaFactory$(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/data/Messages$$Lambda$5;-><init>(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$1:I

    iget v1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$3:I

    iget v3, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$4:I

    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$5;->arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/data/Messages;->lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    return-void
.end method
