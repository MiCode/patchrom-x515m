.class Lcom/android/camera/component/BurstUI$8;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 225
    move-object v3, p1

    check-cast v3, Lcom/android/camera/QueryEvent;

    .line 226
    .local v3, queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, contentUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/MediaInfo;>;"
    iget-object v4, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 229
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 231
    new-instance v2, Lcom/android/camera/MediaInfo;

    invoke-direct {v2}, Lcom/android/camera/MediaInfo;-><init>()V

    .line 232
    .local v2, mediaInfo:Lcom/android/camera/MediaInfo;
    iget-object v4, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/camera/component/BurstUI;->access$800(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 233
    const-string v4, "image/jpeg"

    iput-object v4, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v2           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/android/camera/QueryEvent;->setResult(Ljava/lang/Object;)V

    .line 239
    .end local v1           #i:I
    :cond_1
    return-void
.end method
