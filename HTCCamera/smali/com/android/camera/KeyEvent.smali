.class public Lcom/android/camera/KeyEvent;
.super Lcom/android/camera/InterruptableEvent;
.source "KeyEvent.java"


# instance fields
.field private m_KeyCode:I

.field private m_NativeKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "name"
    .parameter "nativeEvent"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/InterruptableEvent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/KeyEvent;->m_KeyCode:I

    .line 18
    iput-object p2, p0, Lcom/android/camera/KeyEvent;->m_NativeKeyEvent:Landroid/view/KeyEvent;

    .line 19
    return-void
.end method


# virtual methods
.method public final getKeyCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/KeyEvent;->m_KeyCode:I

    return v0
.end method

.method public final getNativeKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/KeyEvent;->m_NativeKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method
