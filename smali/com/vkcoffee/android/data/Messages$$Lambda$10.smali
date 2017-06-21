.class final synthetic Lcom/vkcoffee/android/data/Messages$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$1:Ljava/util/ArrayList;

    iput p2, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$2:I

    iput p3, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$3:I

    iput-object p4, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/data/Messages$$Lambda$10;-><init>(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$1:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$2:I

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$3:I

    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$10;->arg$4:Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/vkcoffee/android/data/Messages;->lambda$null$262(Ljava/util/ArrayList;IILcom/vkcoffee/android/data/Messages$GetDialogsCallback;Ljava/util/ArrayList;)V

    return-void
.end method
