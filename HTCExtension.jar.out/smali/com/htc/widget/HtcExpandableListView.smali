.class public Lcom/htc/widget/HtcExpandableListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcExpandableListView$1;,
        Lcom/htc/widget/HtcExpandableListView$SavedState;,
        Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field private mConnector:Lcom/htc/widget/HtcExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIsRightIndicator:Z

.field private mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    new-array v0, v3, [I

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    .line 165
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 169
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 173
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    .line 185
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 173
    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 204
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 212
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 220
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    .line 222
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 224
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    .line 226
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    .line 228
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    .line 233
    iput-boolean v3, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    .line 239
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 241
    return-void

    .line 235
    :cond_0
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    goto :goto_0
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1014
    iget v0, p1, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1017
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 362
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 364
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 371
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 374
    .local v3, stateSetIndex:I
    sget-object v4, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 388
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 368
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_4
    move v5, v4

    .line 371
    goto :goto_1

    .line 377
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 379
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 384
    .local v2, stateSet:[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 381
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 942
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v0

    .line 945
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 947
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 967
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 982
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 923
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 925
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 903
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x2

    .line 907
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 510
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 511
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 648
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 652
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 988
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1002
    :goto_0
    return-object v0

    .line 993
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 994
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 995
    .local v7, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 996
    .local v8, pos:Lcom/htc/widget/HtcExpandableListPosition;
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 998
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    .line 999
    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1000
    .local v2, packedPosition:J
    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 1002
    new-instance v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 247
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/16 v18, 0x0

    .line 255
    .local v18, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 256
    .local v8, clipToPadding:Z
    :goto_1
    if-eqz v8, :cond_2

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    move/from16 v19, v0

    .line 259
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v20, v0

    .line 260
    .local v20, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 265
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 267
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 269
    .local v14, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v16, v0

    .line 277
    .local v16, myB:I
    const/4 v15, -0x4

    .line 279
    .local v15, lastItemType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 284
    .local v12, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    .line 285
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    .local v7, childFlPos:I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 288
    if-gez v7, :cond_5

    .line 286
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v12           #indicatorRect:Landroid/graphics/Rect;
    .end local v14           #lastChildFlPos:I
    .end local v15           #lastItemType:I
    .end local v16           #myB:I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 291
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v12       #indicatorRect:Landroid/graphics/Rect;
    .restart local v14       #lastChildFlPos:I
    .restart local v15       #lastItemType:I
    .restart local v16       #myB:I
    :cond_5
    if-le v7, v14, :cond_7

    .line 345
    :cond_6
    if-eqz v8, :cond_0

    .line 346
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 296
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 297
    .local v13, item:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 298
    .local v21, t:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 301
    .local v5, b:I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 308
    .local v17, pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_8

    .line 309
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 319
    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    .line 322
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 326
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 327
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 334
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getIndicator(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 335
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 337
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 310
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_4

    .line 312
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_5

    .line 315
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 329
    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 330
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 405
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v3, p3, v5

    .line 409
    .local v3, flatListPosition:I
    if-ltz v3, :cond_4

    .line 410
    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 411
    .local v0, adjustedPosition:I
    iget-object v5, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 413
    .local v4, pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v5, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v6, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v5, v6, :cond_3

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 417
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mClipChildDivider:Z

    .line 418
    .local v1, clip:Z
    if-nez v1, :cond_2

    .line 419
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 424
    :goto_0
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 428
    :cond_1
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 436
    .end local v0           #adjustedPosition:I
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v4           #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :goto_1
    return-void

    .line 421
    .restart local v0       #adjustedPosition:I
    .restart local v1       #clip:Z
    .restart local v2       #divider:Landroid/graphics/drawable/Drawable;
    .restart local v4       #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 431
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 435
    .end local v0           #adjustedPosition:I
    .end local v4           #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :cond_4
    invoke-super {p0, p1, p2, v3}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1
.end method

.method public expandGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(I)Z

    move-result v0

    .line 631
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 635
    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .parameter "flatListPosition"

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    const-wide v1, 0xffffffffL

    .line 770
    :goto_0
    return-wide v1

    .line 766
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 767
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 768
    .local v3, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 769
    .local v1, packedPos:J
    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 785
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainPosition(J)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 787
    .local v1, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v2, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    .line 788
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 789
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 816
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 825
    :goto_0
    return-wide v3

    .line 818
    :cond_0
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 820
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 822
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 825
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 804
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 558
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 560
    .local v7, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    .line 563
    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 567
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 571
    const/4 v8, 0x1

    .line 618
    :goto_0
    return v8

    .line 575
    :cond_0
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    .line 579
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 604
    :cond_1
    :goto_1
    const/4 v8, 0x1

    .line 616
    .local v8, returnValue:Z
    :goto_2
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 586
    .end local v8           #returnValue:Z
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    .line 588
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    .line 590
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_1

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    .line 609
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z

    move-result v8

    goto :goto_0

    .line 613
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #returnValue:Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1196
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 1197
    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    sub-int v0, v1, v2

    .line 1198
    .local v0, width:I
    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getRight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1169
    instance-of v1, p1, Lcom/htc/widget/HtcExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1170
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1180
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1174
    check-cast v0, Lcom/htc/widget/HtcExpandableListView$SavedState;

    .line 1175
    .local v0, ss:Lcom/htc/widget/HtcExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1177
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1162
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1163
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$SavedState;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/htc/widget/HtcExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 539
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 546
    :goto_0
    return v1

    .line 545
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 546
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/htc/widget/HtcExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 485
    if-eqz p1, :cond_0

    .line 487
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/htc/widget/HtcExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    .line 488
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcExpandableListConnector;->setIndicatorBounds(II)V

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 446
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "childDivider"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 400
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mClipChildDivider:Z

    .line 401
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1030
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1044
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    .line 1045
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    .line 1046
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "groupIndicator"

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1058
    return-void
.end method

.method public setHandleChildBackground(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setHandleChildBackground(Z)V

    .line 1193
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1072
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    .line 1073
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 1074
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v0, :cond_0

    .line 1075
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    .line 1080
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcExpandableListConnector;->setIndicatorBounds(II)V

    .line 1082
    :cond_0
    return-void

    .line 1078
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    goto :goto_0
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 745
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 718
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    .line 673
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    .line 693
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 475
    return-void
.end method

.method public setPositionMap(Lcom/htc/widget/PositionMap;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    .line 1188
    return-void
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setSections([Ljava/lang/Object;)V

    .line 1184
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 855
    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainChildPosition(II)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    .line 857
    .local v0, elChildPos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 859
    .local v1, flatChildPos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_1

    .line 863
    if-nez p3, :cond_0

    const/4 v2, 0x0

    .line 880
    :goto_0
    return v2

    .line 865
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 867
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 870
    if-nez v1, :cond_1

    .line 871
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    :cond_1
    iget-object v2, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 877
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 878
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 880
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 834
    invoke-static {p1}, Lcom/htc/widget/HtcExpandableListPosition;->obtainGroupPosition(I)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v1

    .line 836
    .local v1, elGroupPos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 837
    .local v2, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 838
    iget-object v3, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 839
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 840
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 841
    return-void
.end method
