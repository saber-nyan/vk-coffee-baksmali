.class final synthetic Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

.field private final arg$2:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    iput-object p2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;->arg$2:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;)Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;-><init>(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;)V

    return-object v0
.end method


# virtual methods
.method public onWidthSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;->arg$2:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->lambda$show$161(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;I)V

    return-void
.end method
