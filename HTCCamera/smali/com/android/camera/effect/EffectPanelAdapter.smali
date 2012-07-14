.class public Lcom/android/camera/effect/EffectPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "EffectPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectPanelAdapter$1;,
        Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_Orientation:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V
    .locals 1
    .parameter "cameraActivity"
    .parameter "effectList"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Orientation:I

    .line 43
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 44
    iput-object p2, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    .line 45
    return-void
.end method

.method private getDisplayImageAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 6
    .parameter "effect"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, name:Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02016b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a009f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 91
    :goto_0
    return-object v1

    .line 63
    :cond_0
    const-string v1, "mono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "negative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "solarize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02016f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "posterize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 71
    :cond_4
    const-string v1, "aqua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 74
    :cond_5
    const-string v1, "distortion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020163

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 76
    :cond_6
    const-string v1, "vignette"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020171

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 78
    :cond_7
    const-string v1, "depth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 80
    :cond_8
    const-string v1, "dots"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020164

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 82
    :cond_9
    const-string v1, "vintage-high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 83
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020161

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v1, "vintage-red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v1, "vintage-green"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 87
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string v1, "vintage-sepia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 89
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 91
    :cond_d
    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v5, v1, v3

    aput-object v5, v1, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    if-nez p2, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    invoke-direct {v2, v5}, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;-><init>(Lcom/android/camera/effect/EffectPanelAdapter$1;)V

    .line 121
    .local v2, viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    const v3, 0x7f0800a1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 122
    const v3, 0x7f0800a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    .line 123
    const v3, 0x7f0800a3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    .line 124
    const v3, 0x7f0800a4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v3, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 132
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectPanelAdapter;->getDisplayImageAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v1

    .line 135
    .local v1, imageAndText:[Ljava/lang/Integer;
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    iget v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Orientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 138
    aget-object v3, v1, v7

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_1
    aget-object v3, v1, v8

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :goto_2
    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectList;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-eq v3, v0, :cond_3

    .line 152
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const v5, 0x7f0a0004

    const v6, 0x7f0200f6

    invoke-static {v4, v5, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p2, v7}, Landroid/view/View;->setSelected(Z)V

    .line 172
    :goto_3
    return-object p2

    .line 128
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #imageAndText:[Ljava/lang/Integer;
    .end local v2           #viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    .restart local v2       #viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    goto :goto_0

    .line 141
    .restart local v0       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v1       #imageAndText:[Ljava/lang/Integer;
    :cond_1
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 162
    :cond_3
    iget-object v3, v2, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const v5, 0x7f0a0005

    const v6, 0x7f020167

    invoke-static {v4, v5, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p2, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3
.end method

.method public final setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    iput p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Orientation:I

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 193
    return-void

    .line 184
    :pswitch_0
    const/4 p1, 0x1

    .line 185
    goto :goto_0

    .line 188
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
