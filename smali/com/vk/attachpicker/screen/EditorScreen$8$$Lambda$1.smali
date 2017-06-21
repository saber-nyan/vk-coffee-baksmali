.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$2:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;->arg$2:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$$Lambda$1;->arg$2:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$8;->lambda$loadAndShow$110(Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;)V

    return-void
.end method
