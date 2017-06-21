.class final synthetic Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/ColorSelectorView;

.field private final arg$2:I

.field private final arg$3:Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/ColorSelectorView;ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/ColorSelectorView;

    iput p2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$2:I

    iput-object p3, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$3:Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/ColorSelectorView;ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;-><init>(Lcom/vk/attachpicker/widget/ColorSelectorView;ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/ColorSelectorView;

    iget v1, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$2:I

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ColorSelectorView$$Lambda$1;->arg$3:Lcom/vk/attachpicker/widget/ColorSelectorView$ColorView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->lambda$addColorView$71(ILcom/vk/attachpicker/widget/ColorSelectorView$ColorView;Landroid/view/View;)V

    return-void
.end method
