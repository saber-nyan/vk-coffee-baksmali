.class final synthetic Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;->arg$1:Ljava/lang/Runnable;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;->arg$1:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->lambda$$$118(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
