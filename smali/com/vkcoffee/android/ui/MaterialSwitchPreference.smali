.class public Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "MaterialSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;-><init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    .line 104
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;-><init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    .line 94
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;-><init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    .line 70
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleRes"    # I
    .param p4, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;-><init>(Lcom/vkcoffee/android/ui/MaterialSwitchPreference;Lcom/vkcoffee/android/ui/MaterialSwitchPreference$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    .line 84
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f030144

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setWidgetLayoutResource(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 117
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f100126

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "checkableView":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    .line 120
    instance-of v3, v1, Landroid/widget/Switch;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 121
    check-cast v2, Landroid/widget/Switch;

    .line 122
    .local v2, "switchView":Landroid/widget/Switch;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v2    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v0, v1

    .line 125
    check-cast v0, Landroid/widget/Checkable;

    .line 126
    .local v0, "checkable":Landroid/widget/Checkable;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    instance-of v3, v1, Landroid/widget/Switch;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 131
    check-cast v2, Landroid/widget/Switch;

    .line 132
    .restart local v2    # "switchView":Landroid/widget/Switch;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 133
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->mListener:Lcom/vkcoffee/android/ui/MaterialSwitchPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    .end local v0    # "checkable":Landroid/widget/Checkable;
    .end local v2    # "switchView":Landroid/widget/Switch;
    :cond_1
    return-void
.end method
