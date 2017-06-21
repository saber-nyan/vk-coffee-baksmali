.class public Lcom/vkcoffee/android/ui/ColorPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "ColorPreference.java"


# instance fields
.field private needThemedContext:Z

.field private themedContext:Landroid/content/Context;

.field private transientValue:I

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 47
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ColorPreference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 56
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->themedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 88
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    const v0, 0x103006f

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/ColorPreference;->themedContext:Landroid/content/Context;

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->needThemedContext:Z

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->themedContext:Landroid/content/Context;

    .line 94
    :goto_1
    return-object v0

    .line 88
    :cond_1
    const v0, 0x1030226

    goto :goto_0

    .line 94
    :cond_2
    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1
.end method

.method public getTransientValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->transientValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 82
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1001c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flask/colorpicker/CircleColorDrawable;

    iget v2, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    invoke-direct {v1, v2}, Lcom/flask/colorpicker/CircleColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 75
    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 76
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ColorPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 71
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 64
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    .line 65
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ColorPreference;->persistInt(I)Z

    goto :goto_0

    .line 68
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    iput v0, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    goto :goto_0
.end method

.method public setTransientValue(I)V
    .locals 0
    .param p1, "transientValue"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/vkcoffee/android/ui/ColorPreference;->transientValue:I

    .line 39
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/ui/ColorPreference;->value:I

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ColorPreference;->persistInt(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ColorPreference;->notifyChanged()V

    .line 31
    return-void
.end method
