.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$createView$95(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
