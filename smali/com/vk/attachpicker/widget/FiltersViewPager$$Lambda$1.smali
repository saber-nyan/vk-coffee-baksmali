.class final synthetic Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/FiltersViewPager;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/FiltersViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/FiltersViewPager;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/FiltersViewPager;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;-><init>(Lcom/vk/attachpicker/widget/FiltersViewPager;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager$$Lambda$1;->arg$1:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->lambda$showFakeSwipe$135()V

    return-void
.end method
