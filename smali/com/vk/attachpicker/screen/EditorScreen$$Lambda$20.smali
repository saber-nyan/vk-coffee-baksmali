.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;->arg$1:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$createView$105(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
