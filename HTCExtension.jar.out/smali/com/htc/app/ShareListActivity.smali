.class public Lcom/htc/app/ShareListActivity;
.super Landroid/app/Activity;
.source "ShareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ShareListActivity$SharedAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_FOR_SOCIALNETWORK:Ljava/lang/String; = "share"

.field private static final ACTION_NAME_GENERAL:Ljava/lang/String; = "android.intent.action.SEND"

.field private static final MSG_SHORTEN_COMPLETE_BITLY:I = 0x5

.field private static final MSG_SHORTEN_COMPLETE_ISGD:I = 0x1

.field private static final MSG_SHORTEN_ERROR_BITLY:I = 0x6

.field private static final MSG_SHORTEN_ERROR_ISGD:I = 0x2

.field private static final MSG_SHORTEN_START_BITLY:I = 0x4

.field private static final MSG_SHORTEN_START_ISGD:I = 0x0

.field private static final MSG_SHORTEN_TIMEOUT_BITLY:I = 0x7

.field private static final MSG_SHORTEN_TIMEOUT_ISGD:I = 0x3


# instance fields
.field private mAdapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

.field mApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadDialog:Landroid/app/ProgressDialog;

.field mLongURL:Ljava/lang/String;

.field mOriginalURL:Ljava/lang/String;

.field mSelectedItem:I

.field private mShareHandler:Landroid/os/Handler;

.field mSharedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/ShareListActivity;->mSelectedItem:I

    .line 268
    new-instance v0, Lcom/htc/app/ShareListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/app/ShareListActivity$3;-><init>(Lcom/htc/app/ShareListActivity;)V

    iput-object v0, p0, Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/ShareListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/app/ShareListActivity;->startSelectedAppWithoutShortenedURL()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/ShareListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/app/ShareListActivity;->launchProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/ShareListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/ShareListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/app/ShareListActivity;->startSelectedAppWithShortenedURL(Ljava/lang/String;)V

    return-void
.end method

.method private launchProgressDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 194
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    .line 200
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 202
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 204
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 206
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 207
    iget-object v0, p0, Lcom/htc/app/ShareListActivity;->mLoadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->onStart()V

    goto :goto_0
.end method

.method private sortList()V
    .locals 10

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/htc/app/ShareListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 168
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x1

    if-le v3, v9, :cond_4

    .line 170
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v6, v9, :cond_3

    .line 171
    move v4, v6

    .line 172
    .local v4, id_current:I
    add-int/lit8 v5, v6, 0x1

    .line 173
    .local v5, id_next:I
    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 174
    .local v0, ap_current:Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 176
    .local v1, ap_next:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, current_name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 178
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 180
    :cond_0
    invoke-virtual {v1, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, next_name:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 182
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 184
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    .line 185
    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v9, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v9, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 168
    .end local v0           #ap_current:Landroid/content/pm/ResolveInfo;
    .end local v1           #ap_next:Landroid/content/pm/ResolveInfo;
    .end local v2           #current_name:Ljava/lang/String;
    .end local v4           #id_current:I
    .end local v5           #id_next:I
    .end local v7           #next_name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 190
    .end local v6           #j:I
    :cond_4
    return-void
.end method

.method private startSelectedAppWithShortenedURL(Ljava/lang/String;)V
    .locals 6
    .parameter "shortenedURL"

    .prologue
    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    iget v4, p0, Lcom/htc/app/ShareListActivity;->mSelectedItem:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 214
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    const/high16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 220
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.friendstream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    :cond_0
    const-string v3, "JEFF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ShareListActivity] >> shortenedURL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v3, "share"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v3, "android.intent.extra.TITLE"

    iget-object v4, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/ShareListActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void

    .line 230
    :cond_1
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startSelectedAppWithoutShortenedURL()V
    .locals 5

    .prologue
    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    iget v3, p0, Lcom/htc/app/ShareListActivity;->mSelectedItem:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 241
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.facebook.katana.ShareLinkActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/ShareListActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void

    .line 251
    :cond_0
    const-string v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 262
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 265
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/app/ShareListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 73
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "SHARED_CONTENT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    .line 74
    const-string v8, "ORIGINAL_URL"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    .line 75
    const-string v8, "LONG_URL"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    .line 77
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    if-nez v8, :cond_0

    const-string v8, ""

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mSharedContent:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    if-nez v8, :cond_1

    const-string v8, ""

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    if-nez v8, :cond_2

    const-string v8, ""

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    .line 82
    :cond_2
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    const-string v9, "about:blank"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "about:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 85
    :cond_3
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    .line 86
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    .line 90
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v7, send:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/htc/app/ShareListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 99
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/high16 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    .line 100
    invoke-direct {p0}, Lcom/htc/app/ShareListActivity;->sortList()V

    .line 103
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mOriginalURL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 104
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 105
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v9, "com.facebook.katana.ShareLinkActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 106
    iget-object v8, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    .end local v3           #i:I
    :cond_6
    new-instance v8, Lcom/htc/app/ShareListActivity$SharedAdapter;

    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mApplicationList:Ljava/util/List;

    invoke-direct {v8, p0, v9}, Lcom/htc/app/ShareListActivity$SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v8, p0, Lcom/htc/app/ShareListActivity;->mAdapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    .line 114
    new-instance v1, Lcom/htc/app/ShareListActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/app/ShareListActivity$1;-><init>(Lcom/htc/app/ShareListActivity;)V

    .line 140
    .local v1, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/htc/app/ShareListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/app/ShareListActivity$2;-><init>(Lcom/htc/app/ShareListActivity;)V

    .line 148
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->setIsShareListActivity()Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x20c0193

    invoke-virtual {p0, v9}, Lcom/htc/app/ShareListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/app/ShareListActivity;->mAdapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 158
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 159
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 160
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v8, 0x3f00

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 161
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    return-void

    .line 104
    .end local v0           #cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #choose_listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v5           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #i:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
