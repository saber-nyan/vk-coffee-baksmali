.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-boolean p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;->arg$2:Z

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$trackDraw$125(Z)V

    return-void
.end method
