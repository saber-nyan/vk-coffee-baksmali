.class final synthetic Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameIconButtonHolder;->lambda$new$703(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
