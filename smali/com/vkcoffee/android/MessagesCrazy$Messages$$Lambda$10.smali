.class Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;
.super Ljava/lang/Object;
.source "MessagesCrazy.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MessagesCrazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Messages$$Lambda$10"
.end annotation


# instance fields
.field private final arg$1:Ljava/util/ArrayList;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 0
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$1:Ljava/util/ArrayList;

    .line 250
    iput p2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$2:I

    .line 251
    iput p3, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$3:I

    .line 252
    iput-object p4, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .line 253
    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1
    .param p0, "arrayList"    # Ljava/util/ArrayList;
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 256
    new-instance v0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;-><init>(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "arrayList"    # Ljava/util/ArrayList;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$1:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$3:I

    iget-object v3, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$$Lambda$10;->arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/vkcoffee/android/MessagesCrazy;->lambda$null$262(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;Ljava/util/ArrayList;)V

    .line 261
    return-void
.end method
