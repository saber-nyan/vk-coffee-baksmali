.class Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;
.super Ljava/lang/Object;
.source "MessagesCrazy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MessagesCrazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Messages$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:I

.field private final arg$2:I

.field private final arg$3:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;


# direct methods
.method private constructor <init>(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$1:I

    .line 210
    iput p2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$2:I

    .line 211
    iput-object p3, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$3:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .line 212
    return-void
.end method

.method public static lambdaFactory$(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "i"    # I
    .param p1, "i2"    # I
    .param p2, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 215
    new-instance v0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;-><init>(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$1:I

    iget v1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$2;->arg$3:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/MessagesCrazy;->lambda$getDialogs$264(IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    .line 220
    return-void
.end method
