.class Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;
.super Ljava/lang/Object;
.source "MessagesImportant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MessagesImportant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Messages$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:I

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;


# direct methods
.method private constructor <init>(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I
    .param p4, "i4"    # I
    .param p5, "getMessagesCallback"    # Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$1:I

    .line 122
    iput p2, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$2:I

    .line 123
    iput p3, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$3:I

    .line 124
    iput p4, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$4:I

    .line 125
    iput-object p5, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .line 126
    return-void
.end method

.method public static lambdaFactory$(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)Ljava/lang/Runnable;
    .locals 6
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "getMessagesCallback"    # Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 129
    new-instance v0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;-><init>(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    iget v0, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$1:I

    iget v1, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$3:I

    iget v3, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$4:I

    iget-object v4, p0, Lcom/vkcoffee/android/MessagesImportant$Messages$$Lambda$5;->arg$5:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/MessagesImportant;->lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    .line 134
    return-void
.end method
