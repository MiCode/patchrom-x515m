.class Lcom/android/camera/MenuHandler$HeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MenuHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation


# instance fields
.field bDisabledList:[Z

.field final mOptions:[Ljava/lang/String;

.field final mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/MenuHandler;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "values"
    .parameter "options"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1074
    iput-object p3, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mValues:[Ljava/lang/String;

    .line 1075
    iput-object p4, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mOptions:[Ljava/lang/String;

    .line 1076
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->bDisabledList:[Z

    .line 1077
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "no-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 1081
    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v4, "no-value"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->this$0:Lcom/android/camera/MenuHandler;

    const v4, 0x7f030029

    #calls: Lcom/android/camera/MenuHandler;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v2, p2, v4, p3, v3}, Lcom/android/camera/MenuHandler;->access$2100(Lcom/android/camera/MenuHandler;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1084
    const v2, 0x7f0800b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mOptions:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->this$0:Lcom/android/camera/MenuHandler;

    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->bDisabledList:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    #calls: Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V
    invoke-static {v4, p2, v2}, Lcom/android/camera/MenuHandler;->access$2200(Lcom/android/camera/MenuHandler;Landroid/view/View;Z)V

    .line 1099
    return-object p2

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->this$0:Lcom/android/camera/MenuHandler;

    const v4, 0x7f030044

    #calls: Lcom/android/camera/MenuHandler;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v2, p2, v4, p3, v3}, Lcom/android/camera/MenuHandler;->access$2100(Lcom/android/camera/MenuHandler;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1088
    const v2, 0x7f080190

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1089
    .local v0, checkview:Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->mOptions:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v2, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/MenuHandler;->access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getModifiedRadioBtn(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    .line 1093
    .local v1, mark:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0           #checkview:Landroid/widget/CheckedTextView;
    .end local v1           #mark:Landroid/graphics/drawable/Drawable;
    :cond_2
    move v2, v3

    .line 1098
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/camera/MenuHandler$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisabledList(IZ)Z
    .locals 1
    .parameter "position"
    .parameter "disabled"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->bDisabledList:[Z

    aget-boolean v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler$HeaderAdapter;->bDisabledList:[Z

    aput-boolean p2, v0, p1

    .line 1107
    const/4 v0, 0x1

    goto :goto_0
.end method
