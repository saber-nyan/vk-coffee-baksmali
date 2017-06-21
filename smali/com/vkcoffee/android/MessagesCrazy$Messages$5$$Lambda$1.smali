.class Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;
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
    name = "Messages$5$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/data/VKList;

.field private final arg$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V
    .locals 0
    .param p1, "vKList"    # Lcom/vkcoffee/android/data/VKList;
    .param p2, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;
    .param p3, "i"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$1:Lcom/vkcoffee/android/data/VKList;

    .line 229
    iput-object p2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    .line 230
    iput p3, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$3:I

    .line 231
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1
    .param p0, "vKList"    # Lcom/vkcoffee/android/data/VKList;
    .param p1, "getDialogsCallback"    # Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;
    .param p2, "i"    # I

    .prologue
    .line 234
    new-instance v0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;-><init>(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;I)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "arrayList"    # Ljava/util/ArrayList;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$1:Lcom/vkcoffee/android/data/VKList;

    iget-object v1, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$2:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    iget v2, p0, Lcom/vkcoffee/android/MessagesCrazy$Messages$5$$Lambda$1;->arg$3:I

    invoke-static {v0, v1, v2, p1}, Lcom/vkcoffee/android/MessagesCrazy;->lambda$success$263(Lcom/vkcoffee/android/data/VKList;Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;ILjava/util/ArrayList;)V

    .line 239
    return-void
.end method
