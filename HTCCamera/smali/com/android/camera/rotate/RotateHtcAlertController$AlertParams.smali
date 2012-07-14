.class public Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateHtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mDefaultIcon:Z

.field public mForceInverseBackground:Z

.field public mHtcContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mTitleDivider:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1012
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    .line 973
    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 977
    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 983
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 994
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    .line 995
    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleCenter:Z

    .line 996
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mDefaultIcon:Z

    .line 1013
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    .line 1023
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1024
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createListView(Lcom/android/camera/rotate/RotateHtcAlertController;)V
    .locals 11
    .parameter "dialog"

    .prologue
    const v4, 0x1020014

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1097
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900ac

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1099
    .local v6, listView:Landroid/widget/ListView;
    if-eqz v6, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const-string v3, "list_selector_background"

    const v8, 0x1080062

    invoke-static {v1, v3, v8}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1101
    .local v7, bkgId:I
    if-eqz v7, :cond_0

    .line 1102
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 1106
    .end local v7           #bkgId:I
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_6

    .line 1107
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    .line 1108
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    const v3, 0x20900ae

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$1;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1162
    .local v0, adapter:Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1169
    :cond_1
    #setter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$802(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1170
    iget v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    #setter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$902(Lcom/android/camera/rotate/RotateHtcAlertController;I)I

    .line 1172
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    .line 1173
    new-instance v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$3;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Lcom/android/camera/rotate/RotateHtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1194
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_3

    .line 1195
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1198
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_b

    .line 1199
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1203
    :cond_4
    :goto_2
    #setter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$1002(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1204
    return-void

    .line 1123
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_5
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$2;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1151
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7

    const v2, 0x20900af

    .line 1153
    .local v2, layout:I
    :goto_3
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9

    .line 1154
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1151
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #layout:I
    :cond_7
    const v2, 0x20900ad

    goto :goto_3

    .line 1154
    .restart local v2       #layout:I
    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 1157
    :cond_9
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mHtcContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v8, v10, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v9, v8, v5

    new-array v9, v10, [I

    aput v4, v9, v5

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1181
    .end local v2           #layout:I
    :cond_a
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_2

    .line 1182
    new-instance v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams$4;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/android/camera/rotate/RotateHtcAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1200
    :cond_b
    iget-boolean v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4

    .line 1201
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/android/camera/rotate/RotateHtcAlertController;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1028
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1040
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1051
    :cond_3
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1052
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1056
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_5

    .line 1057
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButtonDisabled(IZ)V

    .line 1059
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1060
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButtonDisabled(IZ)V

    .line 1062
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1063
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButtonDisabled(IZ)V

    .line 1066
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_8

    .line 1067
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1071
    :cond_8
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1072
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->createListView(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    .line 1074
    :cond_a
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1075
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_f

    .line 1076
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1083
    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setTitleDividerVisible(Z)V

    .line 1084
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1093
    return-void

    .line 1030
    :cond_c
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1031
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1033
    :cond_d
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1034
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1036
    :cond_e
    iget v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 1037
    iget v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1079
    :cond_f
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
