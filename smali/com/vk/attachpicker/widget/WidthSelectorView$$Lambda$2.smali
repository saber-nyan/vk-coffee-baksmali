.class final synthetic Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView;

.field private final arg$2:Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/WidthSelectorView;Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView;

    iput-object p2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$2:Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

    iput p3, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/WidthSelectorView;Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;-><init>(Lcom/vk/attachpicker/widget/WidthSelectorView;Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$1:Lcom/vk/attachpicker/widget/WidthSelectorView;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$2:Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

    iget v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->arg$3:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->lambda$addWidthView$162(Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;ILandroid/view/View;)V

    return-void
.end method
